-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caas_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_sl_changelog', 'version', 'tested', 'requires', 'requires_php', '_edd_sl_required_versions', 'type', 'homepage');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_sl_changelog', 'version', 'tested', 'requires', 'requires_php', '_edd_sl_required_versions', 'type', 'homepage');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_sl_changelog', 'version', 'tested', 'requires', 'requires_php', '_edd_sl_required_versions', 'type', 'homepage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_sl_changelog', 'version', 'tested', 'requires', 'requires_php', '_edd_sl_required_versions', 'type', 'homepage');

