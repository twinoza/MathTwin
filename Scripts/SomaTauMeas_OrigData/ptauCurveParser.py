import numpy as np
import matplotlib.pyplot as plt
import os
import re
import csv
from scipy.optimize import curve_fit
from scipy.stats import linregress

# Global Variables
labelSize=16
titleSize=18

boltzConst=1.3806488*10**-23
electCharge=1.60217657*10**-19

### Global Functions
def thermalVoltage(temp):
	return boltzConst*temp/electCharge
def temp(thermV):
	return thermV*electCharge/boltzConst
def funcF(Ibk,Ilk,pqua,ptau):
	foo = np.sqrt((2*pqua*Ibk/Ilk) -1)
	return (Ilk/ptau) * foo/(np.pi+2*np.arctan(1/foo))
def funcFiIn(iIn_, tau_):
	return 1 / (tau_*h(iIn_))
def funcTauFit(xVal,ptau):
	return ptau*xVal
#def iIn(pqua_, Iin_, Ilk_, Ilkr_):
#	return pqua_*Iin_*Ilk_/((Ilk_+Ilkr_)**2)
def iIn(pqua_, Iin_, Ilk_):
	return pqua_*Iin_/Ilk_
def h(iIn_):
	foo = np.sqrt((2*iIn_) -1)
	return (np.pi+2*np.arctan(1/foo))/foo

color1 = (1,0,0,1)	# Red
color2 = (0,0,1,1)	# Blue
color3 = (1,0.5,0,1)	# Orange
color4 = (0,0,0.75,0.75)	# Dark Blue

dataOut = dict()		# dataOut will store the output data that will be used in the plot
stdMult = 3				# Defines how many std deviations worth is considered an outlier
femtoUnit = 10**-15

curDataIn = np.loadtxt(open("SomaSimTauData.txt","r"))#, delimiter="\t ", skiprows=0)

# Grab the data and then filter it for the outliers
tauVals = curDataIn[0,1:]
print "Tau", tauVals
IlkVals = curDataIn[1,1:]
print "Ilk", IlkVals
iInVals = curDataIn[2:,0]
print "iIn",iInVals
freqData = curDataIn[2:,1:]
#print("Freq", freqData)
pqua = 2.34512
Ilkr = 9.55616*femtoUnit
capEst = 90.6445*femtoUnit
kappaEst = 0.68
ptauGuess = thermalVoltage(298)*capEst/kappaEst
print "Estimated ptau: ", ptauGuess
ptauList = list()


fig = plt.figure(1, figsize=(15,8))
for i,curiIn in enumerate(iInVals):
#	xVals = h(curiIn)/(IlkVals + Ilkr)
	xVals = h(curiIn)/(IlkVals)
	yVals = 1./freqData[i]
#	print("yVals", yVals)

	plt.subplot(111)
	s1 = r'$i_{in}=$'+str(curiIn)
	popt,pcov = curve_fit(funcTauFit, xVals, yVals, p0=[ptauGuess])
	print '[ptau - ',curiIn,' ]:\t',popt
	plt.plot(xVals, yVals,'.', xVals,funcTauFit(xVals,popt[0]), '--',color=(i*1./len(iInVals),0,0,1))
	plt.text(0.98,1-((i+1)*0.05),s1,fontsize=labelSize-4,horizontalalignment='right',verticalalignment='top',transform=plt.subplot(111).transAxes,color=(i*1./len(iInVals),0,0,1))
#	plt.plot(xVals,funcTauFit(xVals,popt[0]), '--', color=(i*1./len(iInVals),0.2,0,1))
	ptauList.append(popt[0])

plt.subplot(111)
#plt.xlabel(r'$\frac{h(i_{in})}{I_{lk}+I_{lkr}}$',fontsize=labelSize)
plt.xlabel(r'$\frac{h(i_{in})}{I_{lk}}$',fontsize=labelSize)
plt.ylabel(r'$\frac{1}{f}$',fontsize=labelSize)
plt.text(0.5,1.05,r'$\rho_{\tau}$ Calibration Slope',fontsize=titleSize,horizontalalignment='center',transform=plt.subplot(111).transAxes)
#plt.xlim([0.0,1.0])
#plt.yscale('log')
print("Mean ptau: ", np.mean(ptauList))

plt.show()
s1 = 'TauCalib_180nm_miniIn'+str(min(iInVals))+'_maxiIn'+str(max(iInVals))+'_Plot.png'
fig.savefig(s1)

