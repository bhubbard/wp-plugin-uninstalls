#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrmrkdofa_cron_frequency'
wp option delete 'mrmrkdofa_sort_entries_by'
wp option delete 'mrmrkdofa_entries_limit'
wp option delete 'mrmrkdofa_show_post_type'
wp option delete 'mrmrkdofa_word_count'
wp option delete 'mrmrkdofa_site_description'
wp option delete 'mrmrkdofa_excluded_ids'
wp option delete 'mrmrkdofa_excluded_categories'
wp option delete 'mrmrkdofa_excluded_tags'
wp option delete 'mrmrkdofa_generate_md_html'
wp option delete 'mrmrkdofa_daily_time'
wp option delete 'mrmrkdofa_hourly_minute'
wp option delete 'mrmrkdofa_weekly_day'
wp option delete 'mrmrkdofa_weekly_time'
wp option delete 'mrmrkdofa_monthly_day'
wp option delete 'mrmrkdofa_monthly_time'

# Delete Transients
wp transient delete 'mrmrkdofa_md_html_removed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mrmrkdofa_md_%' OR option_name LIKE '_site_transient_mrmrkdofa_md_%'"
wp transient delete 'mrmrkdofa_md_home'

# Clear Cron Jobs
wp cron event delete 'mrmrkdofa_generate_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
