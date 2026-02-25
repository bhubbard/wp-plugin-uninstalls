-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgtitle', 'srvLink', 'serveraddress', 'port', 'dspname', 'srvLink1', 'serveraddress1', 'port1', 'dspname1', 'dspstyle', 'wpsrvstatus_widget', 'srvstatus_options', 'srvstatus_widget');

