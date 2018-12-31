suseImportBuildKey

#======================================
# Activate services
#--------------------------------------
suseInsertService sshd

#======================================
# Setup default target, multi-user
#--------------------------------------
baseSetRunlevel 3

#==========================================
# remove package docs
#------------------------------------------
rm -rf /usr/share/doc/packages/*
rm -rf /usr/share/doc/manual/*
rm -rf /opt/kde*

#======================================
# only basic version of vim is
# installed; no syntax highlighting
#--------------------------------------
sed -i -e's/^syntax on/" syntax on/' /etc/vimrc

#======================================
# SuSEconfig
#--------------------------------------
suseConfig


#======================================
# Link baseproduct
#--------------------------------------
suseSetupProduct

#======================================
# Add leap repo
#--------------------------------------

#======================================
# Remove yast if not in use
#--------------------------------------
suseRemoveYaST

#======================================
# Umount kernel filesystems
#--------------------------------------
baseCleanMount

exit 0
