#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cirvbo_enable_article_schema'
wp option delete 'cirvbo_enable_organization_schema'
wp option delete 'cirvbo_enable_product_schema'
wp option delete 'cirvbo_enable_faq_schema'
wp option delete 'cirvbo_enable_breadcrumb_schema'
wp option delete 'cirvbo_enable_howto_schema'
wp option delete 'cirvbo_organization_name'
wp option delete 'cirvbo_debug_mode'
wp option delete 'cirvbo_debug_log'
wp option delete 'cirvbo_activation_time'
wp option delete 'cirvbo_rating_notice_dismissed'
wp option delete 'cirvbo_migration_complete'
wp option delete 'cirvbo_legacy_cleanup_complete'
wp option delete 'ssb_enable_article_schema'
wp option delete 'ssb_enable_organization_schema'
wp option delete 'ssb_enable_product_schema'
wp option delete 'ssb_enable_faq_schema'
wp option delete 'ssb_enable_breadcrumb_schema'
wp option delete 'ssb_enable_howto_schema'
wp option delete 'ssb_organization_name'
wp option delete 'ssb_debug_mode'
wp option delete 'ssb_debug_log'
wp option delete 'ssb_activation_time'
wp option delete 'ssb_rating_notice_dismissed'
wp option delete 'cirvbo_enable_review_schema'
wp option delete 'cirvbo_enable_recipe_schema'
wp option delete 'cirvbo_enable_event_schema'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cirvbo_organization_schema_%' OR option_name LIKE '_site_transient_cirvbo_organization_schema_%'"

# Clear Cron Jobs
wp cron event delete 'cirvbo_cleanup_legacy_options'

