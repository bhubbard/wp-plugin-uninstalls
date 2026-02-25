-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_EX_FONTS_LIST');
DELETE FROM wp_options WHERE option_name LIKE 'rwp_google_fonts_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwf_raw_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subscribr-send-html', 'subscribr-terms', 'subscribr-pause', 'subscribr-unsubscribe', '_subscribr_opt_out');
DELETE FROM wp_usermeta WHERE meta_key IN ('subscribr-send-html', 'subscribr-terms', 'subscribr-pause', 'subscribr-unsubscribe', '_subscribr_opt_out');
DELETE FROM wp_termmeta WHERE meta_key IN ('subscribr-send-html', 'subscribr-terms', 'subscribr-pause', 'subscribr-unsubscribe', '_subscribr_opt_out');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subscribr-send-html', 'subscribr-terms', 'subscribr-pause', 'subscribr-unsubscribe', '_subscribr_opt_out');

