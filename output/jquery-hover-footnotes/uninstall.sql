-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jqfoot_anchor_open', 'jqfoot_anchor_close', 'jqfoot_title', 'jqfoot_backimg', 'jqfoot_hidefnlist', 'jqfoot_nohover');

