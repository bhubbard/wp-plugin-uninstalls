#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zetpy_product_review_settings'
wp option delete 'zetpy_product_review_db_version'
wp option delete 'zetpy_product_review_activated_at'
wp option delete 'zetpy_product_review_version'
wp option delete 'zetpy_product_review_show_update_notice'
wp option delete 'zetpy_product_review_update_notice_dismissed'
wp option delete 'zetpy_rewrite_rules_flushed'
wp option delete 'zetpy_rewrite_rules_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zetpy_product_reviews_%' OR option_name LIKE '_site_transient_zetpy_product_reviews_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zetpy_featured_reviews_%' OR option_name LIKE '_site_transient_zetpy_featured_reviews_%'"

# Clear Cron Jobs
wp cron event delete 'zetpy_send_review_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zetpy_helpful_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zetpy_helpful_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zetpy_helpful_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zetpy_helpful_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zetpy_review_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zetpy_review_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zetpy_review_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zetpy_review_stats'"
