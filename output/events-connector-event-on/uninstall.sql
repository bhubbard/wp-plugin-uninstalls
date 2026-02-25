-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('momo_themes_exim_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'evcal_options_evcal_1', 'evo_tax_meta', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mmt_eo_exim_export_to_eventbrite', 'mmt_eo_exim_eventbrite_id', 'evcal_srow', 'evcal_erow', 'evcal_repeat', 'evcal_rep_freq', 'repeat_intervals');
DELETE FROM wp_usermeta WHERE meta_key IN ('mmt_eo_exim_export_to_eventbrite', 'mmt_eo_exim_eventbrite_id', 'evcal_srow', 'evcal_erow', 'evcal_repeat', 'evcal_rep_freq', 'repeat_intervals');
DELETE FROM wp_termmeta WHERE meta_key IN ('mmt_eo_exim_export_to_eventbrite', 'mmt_eo_exim_eventbrite_id', 'evcal_srow', 'evcal_erow', 'evcal_repeat', 'evcal_rep_freq', 'repeat_intervals');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mmt_eo_exim_export_to_eventbrite', 'mmt_eo_exim_eventbrite_id', 'evcal_srow', 'evcal_erow', 'evcal_repeat', 'evcal_rep_freq', 'repeat_intervals');

