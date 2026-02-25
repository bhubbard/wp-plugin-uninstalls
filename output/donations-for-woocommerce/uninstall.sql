-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hm_wcdon_options', 'hm_wcdon_rd_notice_hidden', 'hm_wcdon_first_activate');
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_donation_amount_increment', '_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_donation_amount_increment', '_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_donation_amount_increment', '_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_donation_amount_increment', '_price', '_regular_price');

