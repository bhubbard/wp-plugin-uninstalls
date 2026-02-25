-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpb_fp_portfolio_ex_link', 'wpb_fp_pro_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpb_fp_portfolio_ex_link', 'wpb_fp_pro_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpb_fp_portfolio_ex_link', 'wpb_fp_pro_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wpb_fp_portfolio_ex_link', 'wpb_fp_pro_discount_dismissed');

