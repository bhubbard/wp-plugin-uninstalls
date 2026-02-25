-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rssfp-meta-feed-url', 'rssfp-meta-sort-by', 'rfp_notice_clicked', 'rfp_notice_last_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('rssfp-meta-feed-url', 'rssfp-meta-sort-by', 'rfp_notice_clicked', 'rfp_notice_last_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('rssfp-meta-feed-url', 'rssfp-meta-sort-by', 'rfp_notice_clicked', 'rfp_notice_last_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rssfp-meta-feed-url', 'rssfp-meta-sort-by', 'rfp_notice_clicked', 'rfp_notice_last_time');

