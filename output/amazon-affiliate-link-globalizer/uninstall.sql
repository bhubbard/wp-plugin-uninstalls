-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('waalg_enable_asin', 'waalg_enable_keyw', 'waalg_affilate_id', 'waalg_ascsubtag', 'waalg_fallback', 'waalg_add_url', 'waalg_enabled_asin', 'waalg_enabled_keyw');
DELETE FROM wp_options WHERE option_name LIKE 'woboq_amazon_link_globalizer_affiliate_id_%';

