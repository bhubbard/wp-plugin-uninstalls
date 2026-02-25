#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rw_apikey'
wp option delete 'rw_account'
wp option delete 'repuso_js_code'
wp option delete 'repuso_page_type_front-page'
wp option delete 'repuso_page_type_blog-index'
wp option delete 'repuso_page_type_pages'
wp option delete 'repuso_page_type_posts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_show_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_hide_%'"
wp option delete 'url_itself'
wp option delete 'url_type'
wp option delete 'rw_notice_settings_dismissed_until'
wp option delete 'rw_notice_review_dismissed_until'
wp option delete 'rw_posts'
wp option delete 'rw_widgets'
wp option delete 'rw_trial'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_type_%'"

