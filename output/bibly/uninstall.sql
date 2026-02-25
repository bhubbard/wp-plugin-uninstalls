-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bibly_linkVersion', 'bibly_popupVersion', 'bibly_enablePopups', 'bibly_startNodeId');

