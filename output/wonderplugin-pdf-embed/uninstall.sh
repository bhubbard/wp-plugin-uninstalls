#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderplugin_pdf_disabledownload'
wp option delete 'wonderplugin_pdf_disableprint'
wp option delete 'wonderplugin_pdf_disabletext'
wp option delete 'wonderplugin_pdf_disabledoc'
wp option delete 'wonderplugin_pdf_disableopenfile'
wp option delete 'wonderplugin_pdf_disabletoolbar'
wp option delete 'wonderplugin_pdf_disablerightclick'
wp option delete 'wonderplugin_pdf_usedarktheme'
wp option delete 'wonderplugin_pdf_externallinktarget'
wp option delete 'wonderplugin_pdf_gaaccount'
wp option delete 'wonderplugin_pdf_textselection'
wp option delete 'wonderplugin_pdf_texthighlight'
wp option delete 'wonderplugin_pdf_texthighlightselected'

