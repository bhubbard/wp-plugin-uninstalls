-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_paint_activated_on', 'wp_paint_review_later_time', 'wp_paint_review_done', 'wp_paint_edits');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_wpp_revisions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_wpp_revisions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_wpp_revisions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_wpp_revisions');

