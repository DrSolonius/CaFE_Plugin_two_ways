############################################################################
## Name:         CaFE Plugin
## Description:  Perform end-point free energy calculations
## Home page:    https://github.com/HuiLiuCode/CaFE_Plugin
## Version:      1.0
##
## Licence Notice:
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
############################################################################

package require cafe_mmpbsa
package require cafe_lie
package provide cafe 1.0
package require cafe_mmpbsa_2ways
package require cafe_mmpbsa_3ways
package require cafe_pb_only 1.0
namespace eval ::cafe:: {
    namespace export mmpbsa mmpbsa_2ways mmpbsa_3ways pb_only  lie
}
proc mmpbsa { args } { return [eval ::cafe::mmpbsa $args] }

proc lie { args } { return [eval ::cafe::lie $args] }

proc ::cafe::mmpbsa { args } { return [eval ::cafe::mmpbsa::mmpbsa $args] }

proc ::cafe::lie { args } { return [eval ::cafe::lie::lie $args] }

proc mmpbsa_2ways { args } {
    return [eval ::cafe::mmpbsa_2ways $args]
}
proc ::cafe::mmpbsa_2ways { args } {
    return [eval ::cafe::mmpbsa_2ways::mmpbsa $args]
}
proc mmpbsa_3ways { args } {
    return [eval ::cafe::mmpbsa_3ways $args]
}
proc ::cafe::mmpbsa_3ways { args } {
    return [eval ::cafe::mmpbsa_3ways::mmpbsa $args]
}
proc pb_only { args } {
    return [eval ::cafe::pb_only $args]
}

proc ::cafe::pb_only { args } {
    return [eval ::cafe::pb_only::pb_only $args]
}