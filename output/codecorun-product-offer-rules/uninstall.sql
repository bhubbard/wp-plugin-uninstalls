-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codecorun_por_rules_cached');
DELETE FROM wp_options WHERE option_name LIKE 'codecorun_por_rules_cached-%';
DELETE FROM wp_options WHERE option_name LIKE 'codecorun_por_offers_cached-%';
DELETE FROM wp_options WHERE option_name LIKE 'codecorun_por_fallback_cached-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('codecorun-por-offers', 'codecorun-por-rules', 'codecorun-por-fallback', 'codecorun_por_settings', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('codecorun-por-offers', 'codecorun-por-rules', 'codecorun-por-fallback', 'codecorun_por_settings', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('codecorun-por-offers', 'codecorun-por-rules', 'codecorun-por-fallback', 'codecorun_por_settings', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('codecorun-por-offers', 'codecorun-por-rules', 'codecorun-por-fallback', 'codecorun_por_settings', '_customer_user');

