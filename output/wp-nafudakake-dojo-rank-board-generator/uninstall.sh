#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nafu_rowcount'
wp option delete 'nafu_saveRows'
wp option delete 'nafu_saveClasses'
wp option delete 'nafu_saveContents'
wp option delete 'nafu_slatheight'
wp option delete 'nafu_slatwidth'
wp option delete 'nafu_slatspacing'
wp option delete 'nafu_fontsize'
wp option delete 'nafu_showtooltip'
wp option delete 'nafu_layouttype'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_browser_%' OR option_name LIKE '_site_transient_browser_%'"

