-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_sc_setting', 'pscw_maybe_re_migrate', 'pscw_size_charts_editing', 'pscw_setup_wizard', 'pscw_maybe_migrate', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pscw_mode', 'pscw_override', 'woo_sc_size_chart_data', 'pscw_data', 'pscw_interface', 'pscw_current_editing_sc', 'pscw_sizechart_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('pscw_mode', 'pscw_override', 'woo_sc_size_chart_data', 'pscw_data', 'pscw_interface', 'pscw_current_editing_sc', 'pscw_sizechart_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('pscw_mode', 'pscw_override', 'woo_sc_size_chart_data', 'pscw_data', 'pscw_interface', 'pscw_current_editing_sc', 'pscw_sizechart_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pscw_mode', 'pscw_override', 'woo_sc_size_chart_data', 'pscw_data', 'pscw_interface', 'pscw_current_editing_sc', 'pscw_sizechart_mode');

