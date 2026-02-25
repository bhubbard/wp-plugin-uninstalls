-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link_1', 'link_2', 'link_3', 'link_4', 'link_5', 'link_6', 'link_7', 'link_8', 'link_9', 'link_10', 'link_11', 'link_12', 'link_13', 'link_14', 'link_15', 'link_16', 'link_17', 'link_18');
DELETE FROM wp_options WHERE option_name LIKE 'link_%';

