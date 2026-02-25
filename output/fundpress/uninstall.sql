-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donate_admin_notices', 'thimpress_donate_version', 'thimpress_donate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thimpress_donate_user_id', 'thimpress_donate_addition', 'thimpress_donate_type', 'thimpress_donate_donor_id', 'campaign_id', 'title', 'total', 'thimpress_donate_total', 'update_campaign_raised', 'thimpress_campaign_currency', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('thimpress_donate_user_id', 'thimpress_donate_addition', 'thimpress_donate_type', 'thimpress_donate_donor_id', 'campaign_id', 'title', 'total', 'thimpress_donate_total', 'update_campaign_raised', 'thimpress_campaign_currency', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('thimpress_donate_user_id', 'thimpress_donate_addition', 'thimpress_donate_type', 'thimpress_donate_donor_id', 'campaign_id', 'title', 'total', 'thimpress_donate_total', 'update_campaign_raised', 'thimpress_campaign_currency', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thimpress_donate_user_id', 'thimpress_donate_addition', 'thimpress_donate_type', 'thimpress_donate_donor_id', 'campaign_id', 'title', 'total', 'thimpress_donate_total', 'update_campaign_raised', 'thimpress_campaign_currency', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%total_raised';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%total_raised';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%total_raised';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total_raised';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%marker';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%marker';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%marker';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%marker';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%currency';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%currency';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%currency';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%currency';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%total';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%total';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%total';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%addition';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%addition';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%addition';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%addition';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_method';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_method';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_method';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_method';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%donor_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%donor_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%donor_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%donor_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_completed_at';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_completed_at';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_completed_at';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_completed_at';

