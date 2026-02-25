-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('draftnotifyemaillinkspam', 'draftnotifyuserlevel', 'draftnotifyauthorlevel', 'draftnotifyemail', 'draftnotifyemailrevisions', 'draftnotifyposttypes1', 'draftnotifyposttypes2', 'draftnotifyemailedlist', 'draftnotifycustomheader', 'draftnotifyemailpostlink', 'draftnotifyemailauthorname', 'draftnotifyemailauthoremail', 'draftnotifycustomfooter', 'draftnotifyemailfrom', 'draftnotifyemailreply', 'draftnotifyemailsubject');

