-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_offset', 'ubuntu-com_image', 'ubuntu-com_link', 'ubuntu-loco_image', 'ubuntu-loco_link', 'why-ubuntu_image', 'why-ubuntu_link', 'ubuntu-tour_image', 'ubuntu-tour_link', 'download-ubuntu_image', 'download-ubuntu_link', 'ubuntu-dvd_image', 'ubuntu-dvd_link');

