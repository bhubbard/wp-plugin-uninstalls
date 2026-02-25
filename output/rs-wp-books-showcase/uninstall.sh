#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rswpbs_enable_woo_features_for_books'
wp option delete 'rswpbs_enable_editor_for_author_description'
wp option delete 'rswpbs_price_currency'
wp option delete 'rswpbs_search_field_order'
wp option delete 'rswpbs_single_image_type'
wp option delete 'rswpbs_single_page_excerpt_type'
wp option delete 'rswpbs_single_page_excerpt_limit'
wp option delete 'rswpbs_primary_color'
wp option delete 'rswpbs_button_background_color'
wp option delete 'rswpbs_button_text_color'
wp option delete 'secondary_color'
wp option delete 'rswpbs_pages_bg_color'
wp option delete 'rswpbs_container_bg_color'
wp option delete 'bookinfo_bg_color'
wp option delete 'rswpbs_amazon_tracking_id'
wp option delete 'rswpbs_roles_to_manage_books'
wp option delete 'rswpbs_books_page_exists'
wp option delete 'rswpbs_book_gallery_page_id'
wp option delete 'rswpbs_books_archive_page_title'
wp option delete 'rswpbs_books_archive_page_description'
wp option delete 'rswpbs_book_cover_position'
wp option delete 'rswpbs_books_per_page'
wp option delete 'rswpbs_books_per_row'
wp option delete 'rswpbs_show_book_archive_page_header'
wp option delete 'rswpbs_show_search_section'
wp option delete 'rswpbs_show_sorting_section'
wp option delete 'rswpbs_show_book_title'
wp option delete 'rswpbs_show_author_name'
wp option delete 'rswpbs_show_price'
wp option delete 'rswpbs_show_description'
wp option delete 'rswpbs_show_buy_now_button'
wp option delete 'rswpbs_show_name_field'
wp option delete 'rswpbs_show_category_field'
wp option delete 'rswpbs_show_formats_field'
wp option delete 'rswpbs_show_years_field'
wp option delete 'rswpbs_show_author_field'
wp option delete 'rswpbs_show_series_field'
wp option delete 'rswpbs_show_publishers_field'
wp option delete 'rswpbs_show_language_field'
wp option delete 'rswpbs_show_isbn_field'
wp option delete 'rswpbs_show_isbn_10_field'
wp option delete 'rswpbs_show_reset_icon'
wp option delete 'book_layouts_settings'
wp option delete 'rswpbs_show_book_long_description'
wp option delete 'rswpbs_show_excerpt_on_single_page'
wp option delete 'rswpbs_book_search_page'
wp option delete 'upload_csv_file'
wp option delete 'rswpbs_upload_csv_file'
wp option delete 'rswpbs_books_page_id'
wp option delete 'book_author_template_notice_dismissed_forever'
wp option delete 'book_author_template_notice_remind_time'
wp option delete 'author_portfolio_notice_dismissed_forever'
wp option delete 'author_portfolio_notice_remind_time'
wp option delete 'author_personal_blog_notice_dismissed_forever'
wp option delete 'author_personal_blog_notice_remind_time'
wp option delete 'rswpbs_submit_review_without_login'
wp option delete 'rswpbs_show_review_form'
wp option delete 'rswpbs_show_book_reviews'
wp option delete 'rswpbs_show_book_reviews_section_title'
wp option delete 'rswpbs_first_time_activation'
wp option delete 'rswpbs_show_ratings_on_single_page'
wp option delete 'rswpbs_show_price_on_single_page'
wp option delete 'rswpbs_show_buy_button_on_single_page'
wp option delete 'rswpbs_show_author_on_single_page'
wp option delete 'rswpbs_show_sample_content_on_single_page'
wp option delete 'rswpbs_show_addtocart_on_single_page'
wp option delete 'rswpbs_show_msl_on_single_page'

# Delete Transients
wp transient delete 'rswpbs_missing_amazon_tags'
wp transient delete 'rswpbs_permalink_fixed'
wp transient delete 'rswpbs_delayed_redirect_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rswpbs_mockup_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rswpbs_mockup_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rswpbs_mockup_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rswpbs_mockup_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_formats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_formats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_formats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_formats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_also_available_website_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_also_available_website_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_also_available_website_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_also_available_website_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_sample_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_sample_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_sample_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_sample_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%original_book_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%original_book_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%original_book_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%original_book_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%original_book_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%original_book_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%original_book_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%original_book_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_isbn_10'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_isbn_10'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_isbn_10'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_isbn_10'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_isbn_13'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_isbn_13'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_isbn_13'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_isbn_13'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_translator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_translator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_translator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_translator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%simultaneous_device_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%simultaneous_device_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%simultaneous_device_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%simultaneous_device_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_file_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_file_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_file_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_file_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_text_to_speech'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_text_to_speech'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_text_to_speech'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_text_to_speech'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%screen_reader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%screen_reader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%screen_reader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%screen_reader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%enhanced_typesetting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%enhanced_typesetting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%enhanced_typesetting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enhanced_typesetting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%x_ray'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%x_ray'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%x_ray'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%x_ray'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%word_wise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%word_wise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%word_wise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%word_wise'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sticky_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sticky_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sticky_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sticky_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%print_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%print_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%print_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%print_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_dimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_dimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_dimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_dimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_publish_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_publish_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_publish_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_publish_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_publisher_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_publisher_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_publisher_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_publisher_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%average_book_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%average_book_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%average_book_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%average_book_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_availability_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_availability_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_availability_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_availability_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%total_book_ratings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%total_book_ratings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%total_book_ratings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total_book_ratings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_rating_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_rating_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_rating_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_rating_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_reading_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_reading_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_reading_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_reading_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%buy_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%buy_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%buy_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%buy_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%buy_btn_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%buy_btn_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%buy_btn_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%buy_btn_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_reading_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_reading_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_reading_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_reading_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_grade_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_grade_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_grade_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_grade_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%book_lexile_measure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%book_lexile_measure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%book_lexile_measure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%book_lexile_measure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%buy_btn_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%buy_btn_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%buy_btn_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%buy_btn_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_setup_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_author_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_author_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_author_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_author_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsbs_book_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsbs_book_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsbs_book_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsbs_book_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsbs_book_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsbs_book_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsbs_book_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsbs_book_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsbs_book_isbn_10'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsbs_book_isbn_10'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsbs_book_isbn_10'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsbs_book_isbn_10'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rswpbs_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rswpbs_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rswpbs_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rswpbs_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rswpbs_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rswpbs_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rswpbs_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rswpbs_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rswpbs_reviewer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rswpbs_reviewer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rswpbs_reviewer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rswpbs_reviewer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_series_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_series_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_series_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_series_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsbs_buy_btn_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsbs_buy_btn_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsbs_buy_btn_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsbs_buy_btn_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%external_website_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%external_website_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%external_website_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%external_website_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_profile_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_profile_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_profile_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_profile_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_forever'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_forever'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_forever'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_forever'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_amz_notice_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_author_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_author_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_author_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_author_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rswpbs_book_author_social_profiles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rswpbs_book_author_social_profiles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rswpbs_book_author_social_profiles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rswpbs_book_author_social_profiles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rswpbs_reviewed_book'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rswpbs_reviewed_book'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rswpbs_reviewed_book'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rswpbs_reviewed_book'"
