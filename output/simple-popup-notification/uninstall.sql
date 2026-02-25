-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simppono_setcookieexpire', 'simppono_enabled', 'simppono_background_color', 'simppono_text_color', 'simppono_heading', 'simppono_description', 'simppono_cta_button', 'simppono_cta_button_link', 'simppono_cta_button_bg_color', 'simppono_cta_button_text_color', 'simppono_image_upload', 'simppono_select_option', 'simppono_popup_width');

