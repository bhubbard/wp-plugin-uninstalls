#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpho_redirect_visitors_coming'
wp option delete 'wpho_country_selected_htaccess'
wp option delete 'wpho_rewrite_htaccess'
wp option delete 'Timezoneselection'
wp option delete 'Preventsindexingoffolderswithoutindexphp'
wp option delete 'Disabletheserversignature'
wp option delete 'BlockSensitiveFiles'
wp option delete 'ProtectWP-includes'
wp option delete 'protectauthorlink'
wp option delete 'blockauthorscans'
wp option delete 'Enablingthetrackingofsymboliclinks'
wp option delete 'commentspam'
wp option delete 'Protectionagainstfileinjections'
wp option delete 'VariousprotectionsXSSclickjackingandMIME-Typesniffing'
wp option delete 'Disablethehotlinkingofyourpictures'
wp option delete 'RedirectwithoutWWW'
wp option delete 'RedirecttoHTTPS'
wp option delete 'Cachingfilesinthebrowser'
wp option delete 'DisabledheadersETags'
wp option delete 'Compressstaticfiles'

