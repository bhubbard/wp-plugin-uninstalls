-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swf_version', 'swf_bgcolor', 'swf_wmode', 'swf_menu', 'swf_quality', 'swf_fullscreen', 'swf_scriptaccess', 'swf_align', 'swf_message', 'swf_file', 'swf_showinfo', 'swf_annotations', 'swf_loading', 'swf_msgiphone');

