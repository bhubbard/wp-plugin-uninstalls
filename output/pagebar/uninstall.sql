-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Pagebar2_Postbar', 'Pagebar2_Multipagebar', 'pagebar2_commentbar', 'commentbar', 'postbar', 'multipagebar', 'pagebar2_postbar');

