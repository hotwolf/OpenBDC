;###############################################################################
;# OpenBDC - Universal BDM Pod Firmware                                        #
;###############################################################################
;#    Copyright 2010 Dirk Heisswolf                                            #
;#    This file is part of the OpenBDC application                             #
;#                                                                             #
;#    OpenBDC is free software: you can redistribute it and/or modify          #
;#    it under the terms of the GNU General Public License as published by     #
;#    the Free Software Foundation, either version 3 of the License, or        #
;#    (at your option) any later version.                                      #
;#                                                                             #
;#    OpenBDC is distributed in the hope that it will be useful,               #
;#    but WITHOUT ANY WARRANTY; without even the implied warranty of           #
;#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            #
;#    GNU General Public License for more details.                             #
;#                                                                             #
;#    You should have received a copy of the GNU General Public License        #
;#    along with OpenBDC.  If not, see <http://www.gnu.org/licenses/>.         #
;###############################################################################
;# Description:                                                                #
;#   This demo application receives ASCII characters via the RS232 interface   #
;#   and returs various numeric representaions of the received character       #
;###############################################################################
;# Version History:                                                            #
;#    April 4, 2010                                                            #
;#      - Initial release                                                      #
;###############################################################################
;# Global Defines:                                                             #
;#    DEBUG - Turns off functionality that hinders debugging.                  #
;###############################################################################

;###############################################################################
;# Global Parameters                                                           #
;###############################################################################
DEBUG                  EQU     1 ;enable debug code
	
;###############################################################################
;# Memory Map                                                                  #
;###############################################################################
;        	 +-------------+ $0000
;  		 |  Registers  |
;  		 +-------------+ $0400
;  		 |/////////////|
;  		 +-------------+ $3000
;  		 |  Variables  |
;  		 +-------------+ $4000
;  		 |/////////////|
;  		 +-------------+ $C000
;  		 |    Code     |
;  		 +-------------+ 
;  		 |   Tables    |
;  		 +-------------+
;  		 |   Words     |
;  		 +-------------+ $FF80
;  		 |  Vectors    |
;  		 +-------------+ 

OPENBDC_VARS_START		EQU	$3000
FORTH_VARS_START		EQU	OPENBDC_VARS_END
FORTH_VARS_END			EQU	$4000
FORTH_CODE_START		EQU	$C000
OPENBDC_TABS_START		EQU	OPENBDC_CODE_END
FORTH_TABS_START		EQU	OPENBDC_TABS_END
FORTH_WORDS_START		EQU	FORTH_TABS_END
	
;###############################################################################
;# Constants                                                                   #
;###############################################################################
	
;###############################################################################
;# Variables                                                                   #
;###############################################################################
				ORG	OPENBDC_VARS_START
OPENBDC_VARS_END		EQU	*
	
;###############################################################################
;# Code                                                                        #
;###############################################################################	
				ORG	FORTH_APP_START
OPENBDC_CODE_START		EQU	*

				JOB	CF_QUIT
	
OPENBDC_CODE_END		EQU	*
FORTH_APP_END			EQU	*

;###############################################################################
;# Tables                                                                      #
;###############################################################################
				ORG	OPENBDC_TABS_START
OPENBDC_TABS_END		EQU	*
	
;###############################################################################
;# Includes                                                                    #
;###############################################################################
#include ../Subprojects/Source/forth.s         ;S12CForth framework bundle
