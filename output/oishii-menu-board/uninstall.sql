-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrmj_category_order', 'rmm_category_order', 'rmm_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrmj_price', 'rmm_price', 'wrmj_note', 'rmm_note', 'wrmj_term_order', 'rmm_term_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrmj_price', 'rmm_price', 'wrmj_note', 'rmm_note', 'wrmj_term_order', 'rmm_term_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrmj_price', 'rmm_price', 'wrmj_note', 'rmm_note', 'wrmj_term_order', 'rmm_term_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrmj_price', 'rmm_price', 'wrmj_note', 'rmm_note', 'wrmj_term_order', 'rmm_term_order');

