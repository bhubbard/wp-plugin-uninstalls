-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('field_bucketskey777', 'allorany', 'rule', 'position', 'layout', 'hide_on_screen', 'field_bucketskey778', 'buckets');
DELETE FROM wp_usermeta WHERE meta_key IN ('field_bucketskey777', 'allorany', 'rule', 'position', 'layout', 'hide_on_screen', 'field_bucketskey778', 'buckets');
DELETE FROM wp_termmeta WHERE meta_key IN ('field_bucketskey777', 'allorany', 'rule', 'position', 'layout', 'hide_on_screen', 'field_bucketskey778', 'buckets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('field_bucketskey777', 'allorany', 'rule', 'position', 'layout', 'hide_on_screen', 'field_bucketskey778', 'buckets');

