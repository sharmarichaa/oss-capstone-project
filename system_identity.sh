# --- VARIABLES & COMMAND SUBSTITUTION ---
# We store the output of commands into variables using $()
DISTRO=$(lsb_release -ds)
KERNEL=$(uname -r)
CURRENT_USER=$USER
USER_HOME=$HOME
UPTIME=$(uptime -p)
CURRENT_TIME=$(date)

# --- OUTPUT FORMATTING ---
echo "=========================================="
echo "    SYSTEM IDENTITY REPORT"
echo "=========================================="
echo "Welcome, $CURRENT_USER!"
echo ""
echo "OS Distribution : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Home Directory   : $USER_HOME"
echo "System Uptime     : $UPTIME"
echo "Current Date/Time: $CURRENT_TIME"
echo ""
echo "LICENSE NOTICE: "
echo "This operating system and its kernel are"
echo "covered under the GNU General Public License (GPL)."