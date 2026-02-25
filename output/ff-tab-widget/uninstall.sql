-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fftw_nav_bg', 'fftw_nav_color', 'fftw_nav_border', 'fftw_nav_bg_active', 'fftw_nav_color_active', 'fftw_pane_bg', 'fftw_pro_feature');

