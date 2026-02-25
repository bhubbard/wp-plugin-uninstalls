#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cuerda_total_choice'
wp option delete 'cuerda_total_post_status'
wp option delete 'cuerda_total_post_type'
wp option delete 'cuerda_total_post_ctrl'
wp option delete 'cuerda_total_cf_youtube'
wp option delete 'cuerda_total_link_override'
wp option delete 'cuerda_total_rel_urlpass'
wp option delete 'cuerda_total_optout_log'
wp option delete 'cuerda_total_optout_admininfo'
wp option delete 'cuerda_ynf_rel_count'
wp option delete 'cuerda_total_last_delta_run_ts'
wp option delete 'cuerda_rev_status_migrated'
wp option delete 'cuerda_ynf_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_darkmodelogo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wide_logo'"
wp option delete 'cuerda_ynf_output_summary'
wp option delete 'cuerda_ynf_subheadline_cf'
wp option delete 'cuerda_ynf_title'
wp option delete 'cuerda_ynf_enclosure_alt'
wp option delete 'cuerda_ynf_rel_photo'
wp option delete 'cuerda_ynf_cf_rel_photo_title'
wp option delete 'cuerda_ynf_cf_rel_photo_url'
wp option delete 'cuerda_ynf_rel_cf_use'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp option delete 'cuerda_ynf_cf_creator'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add_icatch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enclosure_alt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_icatch_caption'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_icatch_credit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cf_creator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cf_creator_url'"
wp option delete 'cuerda_ynf_priority'
wp option delete 'cuerda_ynf_articletype'
wp option delete 'cuerda_ynf_ftp_server'
wp option delete 'cuerda_ynf_ftp_user_name'
wp option delete 'cuerda_ynf_ftp_password'
wp option delete 'cuerda_ynf_ftp_remote_dir'
wp option delete 'cuerda_ynf_ftp_port'
wp option delete 'cuerda_ynf_ftp_secure'
wp option delete 'cuerda_ynf_ftp_put'
wp option delete 'cuerda_ynf_icatch'
wp option delete 'cuerda_ynf_result_info'
wp option delete 'cuerda_ynf_debug_info'
wp option delete 'cuerda_ynf_ldap_user'
wp option delete 'cuerda_ynf_ldap_pass'

# Delete Transients
wp transient delete 'cuerda_cached_categories'
wp transient delete 'cuerda_cached_tags'
wp transient delete 'cuerda_cached_authors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cuerda_ynf_put_cooldown_%' OR option_name LIKE '_site_transient_cuerda_ynf_put_cooldown_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cuerda_ynf_guard_%' OR option_name LIKE '_site_transient_cuerda_ynf_guard_%'"

# Clear Cron Jobs
wp cron event delete 'cuerda_ynf_run_debounced'
wp cron event delete 'cuerda_ynf_purge_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_total_has_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_total_has_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_total_has_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_total_has_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_total_touched_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_total_touched_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_total_touched_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_total_touched_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_total_demoted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_total_demoted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_total_demoted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_total_demoted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_post_exclude_ynf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_post_exclude_ynf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_post_exclude_ynf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_post_exclude_ynf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_revision_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_revision_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_revision_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_revision_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuerda_revision_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuerda_revision_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuerda_revision_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuerda_revision_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_ynf_rev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_ynf_rev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_ynf_rev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_ynf_rev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cuerda_post_exclude_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cuerda_post_exclude_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cuerda_post_exclude_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cuerda_post_exclude_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_ynf_first_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_ynf_first_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_ynf_first_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_ynf_first_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cuerda_ynf_last_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cuerda_ynf_last_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cuerda_ynf_last_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cuerda_ynf_last_hash'"
