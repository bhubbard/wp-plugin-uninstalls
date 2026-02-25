#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evcal_options_evcal_1'
wp option delete 'evcal_styles'
wp option delete 'evcal_options_evcal_2'
wp option delete 'evcal_php'
wp option delete '_eventon_create_pages'
wp option delete 'evo_dyn_css'
wp option delete 'evo_data_log'
wp option delete 'eventon_plugin_version'
wp option delete 'eventon_events_page_id'
wp option delete '_evo_needs_update'
wp option delete 'evo_tax_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp option delete 'evoai_usage_totals'

# Delete Transients
wp transient delete '_evo_activation_redirect'
wp transient delete 'eventon_cache_excluded_uris'
wp transient delete 'evoai_reset_cooldown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_evo_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_evo_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_evo_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_evo_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_event_color_n'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_event_color_n'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_event_color_n'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_event_color_n'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
