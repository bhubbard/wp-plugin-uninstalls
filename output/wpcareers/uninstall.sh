#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcareers'
wp option delete 'wpca_affiliate_id'
wp option delete 'wpca_userId'
wp option delete 'wpca_password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%before_Tag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%after_Tag'"
wp option delete 'rss_language'

