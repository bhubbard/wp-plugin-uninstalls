-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_image_id', 'event_label1', 'event_label2', 'event_label3', 'event_label4', 'the_date', 'datetimepicker1', 'the_date1', 'datetimepicker2');
DELETE FROM wp_usermeta WHERE meta_key IN ('_image_id', 'event_label1', 'event_label2', 'event_label3', 'event_label4', 'the_date', 'datetimepicker1', 'the_date1', 'datetimepicker2');
DELETE FROM wp_termmeta WHERE meta_key IN ('_image_id', 'event_label1', 'event_label2', 'event_label3', 'event_label4', 'the_date', 'datetimepicker1', 'the_date1', 'datetimepicker2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_image_id', 'event_label1', 'event_label2', 'event_label3', 'event_label4', 'the_date', 'datetimepicker1', 'the_date1', 'datetimepicker2');

