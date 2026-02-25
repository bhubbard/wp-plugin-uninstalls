-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syslog_dest', 'syslog_channel', 'syslog_prefix', 'syslog_logmem', 'syslog_logtime', 'syslog_colour', 'syslog_escape_newlines', 'syslog_strict', 'syslog_noajax', 'syslog_nojscss', 'syslog_ignore_urls', 'bang_syslog_tail', 'bang_syslog_messages');

