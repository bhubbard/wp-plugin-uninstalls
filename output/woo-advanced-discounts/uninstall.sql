-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wad-options', 'wad_admin_notice_ignore', 'wad_do_activation_redirect', 'o-wad-subscribe', 'woocommerce_prices_include_tax', 'wad_review_submitted', 'wad-hide-reviews', 'wad_notice_dismiss', 'wad-hide-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('o-discount', 'wad_used_discount', 'o-list');
DELETE FROM wp_usermeta WHERE meta_key IN ('o-discount', 'wad_used_discount', 'o-list');
DELETE FROM wp_termmeta WHERE meta_key IN ('o-discount', 'wad_used_discount', 'o-list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('o-discount', 'wad_used_discount', 'o-list');

