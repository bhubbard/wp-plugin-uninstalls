-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfd_editorautosave', 'wpfd_postrevisions', 'wpfd_commentauthurl', 'wpfd_generatortag', 'wpfd_coreupdate');

