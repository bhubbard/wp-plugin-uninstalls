#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'merchsys_addmenu'
wp option delete 'merchsys_showcategories'
wp option delete 'merchsys_showshopcarousel'
wp option delete 'merchsys_showloginmenu'
wp option delete 'merchsys_loginmenuwrapper'
wp option delete 'merchsys_basketmenuwrapper'
wp option delete 'merchsys_maxamount'
wp option delete 'merchsys_gobasket'
wp option delete 'merchsys_navigationname'

