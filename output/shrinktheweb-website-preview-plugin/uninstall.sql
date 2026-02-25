-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stwwt_dismiss_notice', 'stwwt_dismiss_notice_time', 'STWThumbnails_KeyId', 'STWThumbnails', 'STWThumbnails_method', 'STWThumbnails_sz', 'STWThumbnails_embedsz', 'STWThumbnails_permspec', 'STWThumbnails_permfull', 'STWThumbnails_permqual', 'STWThumbnails_stwq');

