#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'push_syndicate_settings'
wp option delete 'syn_delete_error_sites'

# Delete Transients
wp transient delete 'syn_syndicate_lock'

# Clear Cron Jobs
wp cron event delete 'syn_syndicate_content'
wp cron event delete 'syn_delete_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_transport_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_transport_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_transport_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_transport_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syn_site_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syn_site_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syn_site_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syn_site_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syn_selected_sitegroups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syn_selected_sitegroups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syn_selected_sitegroups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syn_selected_sitegroups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syn_slave_post_states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syn_slave_post_states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syn_slave_post_states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syn_slave_post_states'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syn_old_sitegroups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syn_old_sitegroups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syn_old_sitegroups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syn_old_sitegroups'"
