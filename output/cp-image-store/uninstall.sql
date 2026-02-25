-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpis_affiliate_royale_active', 'cpis_options', 'cpis_friendly_url', 'cpis_layout', 'cpis_safe_download', 'cpis_prevent_cache', 'cpis_has_been_configured');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'cpis_penalized_ip_%';

