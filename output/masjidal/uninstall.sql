-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('masjid_id', 'montly_pdf_url', 'masjid_calendar_type', 'masjid_calendar_layout', 'highlighted_color', 'jumuah3_time', 'jumuah3time', 'khutbah_time1', 'timeformat_24', 'iqamahChange', 'khutbah_time', 'highlighted_text_color', 'starts_lable', 'top_heading', 'iqamah_lable', 'sunrise_lable', 'fajr_lable', 'dhuhr_lable', 'asr_lable', 'maghrib_lable', 'isha_lable', 'jumuah_header', 'jumuah1_lable', 'jumuah2_lable', 'jumuah3_lable', 'montly_text', 'khutbah_label', 'widget_mpsti_wpb_widget');

