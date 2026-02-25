-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PreventCopyBlogs_ser', 'PreventCopyBlogs_usr', 'PreventCopyBlogs_pass', 'PreventCopyBlogs_dbname', 'PreventCopyBlogs_dbdel', 'PreventCopyBlogs_dbno', 'PreventCopyBlogs_nrc', 'PreventCopyBlogs_nts', 'PreventCopyBlogs_nrc_t', 'PreventCopyBlogs_nrc_text');

