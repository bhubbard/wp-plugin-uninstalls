#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DataAnalysis1on1Secure'
wp option delete 'APIKey1on1Secure'
wp option delete 'OnlyUSAVisitor1on1Secure'
wp option delete 'TorUser1on1Secure'
wp option delete 'ActionForBadIPs1on1Secure'
wp option delete 'ErrorPageForBadIPs1on1Secure'
wp option delete 'toruser1on1secure'
wp option delete 'errorpageforbadips1on1secure'
wp option delete 'actionforbadips1on1secure'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_1on1secure_%' OR option_name LIKE '_site_transient_1on1secure_%'"

