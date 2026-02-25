-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipr_feednumitems', 'ipr_hidefeedtitle');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ipr_feedtitle', 'ipr_feedurl', 'ipr_feednumitems');
DELETE FROM wp_usermeta WHERE meta_key IN ('ipr_feedtitle', 'ipr_feedurl', 'ipr_feednumitems');
DELETE FROM wp_termmeta WHERE meta_key IN ('ipr_feedtitle', 'ipr_feedurl', 'ipr_feednumitems');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ipr_feedtitle', 'ipr_feedurl', 'ipr_feednumitems');

