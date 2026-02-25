<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicont_active_license');
delete_site_option('aicont_active_license');
delete_option('aicont_plugin_license_data');
delete_site_option('aicont_plugin_license_data');
delete_option('aicont_plugin_content_prompt_custom');
delete_site_option('aicont_plugin_content_prompt_custom');
delete_option('aicont_plugin_faq_prompt_custom');
delete_site_option('aicont_plugin_faq_prompt_custom');
delete_option('aicont_plugin_template_type');
delete_site_option('aicont_plugin_template_type');
delete_option('aicont_plugin_faq_article_id');
delete_site_option('aicont_plugin_faq_article_id');
delete_option('aicont_plugin_faq_question_id');
delete_site_option('aicont_plugin_faq_question_id');
delete_option('aicont_plugin_faq_answer_id');
delete_site_option('aicont_plugin_faq_answer_id');
delete_option('aicont_plugin_seo_meta_prompt_custom');
delete_site_option('aicont_plugin_seo_meta_prompt_custom');
delete_option('aicont_plugin_seo_title_prompt_custom');
delete_site_option('aicont_plugin_seo_title_prompt_custom');
delete_option('aicont_plugin_content_page_prompt_custom');
delete_site_option('aicont_plugin_content_page_prompt_custom');
delete_option('aicont_plugin_content_product_prompt_custom');
delete_site_option('aicont_plugin_content_product_prompt_custom');
delete_option('aicont_plugin_short_description_prompt_custom');
delete_site_option('aicont_plugin_short_description_prompt_custom');
delete_option('aicont_plugin_faq_page_prompt_custom');
delete_site_option('aicont_plugin_faq_page_prompt_custom');
delete_option('aicont_plugin_faq_page_article_id');
delete_site_option('aicont_plugin_faq_page_article_id');
delete_option('aicont_plugin_faq_page_question_id');
delete_site_option('aicont_plugin_faq_page_question_id');
delete_option('aicont_plugin_faq_page_answer_id');
delete_site_option('aicont_plugin_faq_page_answer_id');
delete_option('aicont_plugin_faq_product_prompt_custom');
delete_site_option('aicont_plugin_faq_product_prompt_custom');
delete_option('aicont_plugin_faq_product_article_id');
delete_site_option('aicont_plugin_faq_product_article_id');
delete_option('aicont_plugin_faq_product_question_id');
delete_site_option('aicont_plugin_faq_product_question_id');
delete_option('aicont_plugin_faq_product_answer_id');
delete_site_option('aicont_plugin_faq_product_answer_id');
delete_option('aicont_plugin_site_language');
delete_site_option('aicont_plugin_site_language');
delete_option('aicont_plugin_site_title');
delete_site_option('aicont_plugin_site_title');
delete_option('aicont_plugin_seo_meta_page_prompt_custom');
delete_site_option('aicont_plugin_seo_meta_page_prompt_custom');
delete_option('aicont_plugin_seo_meta_product_prompt_custom');
delete_site_option('aicont_plugin_seo_meta_product_prompt_custom');
delete_option('aicont_plugin_seo_page_title_prompt_custom');
delete_site_option('aicont_plugin_seo_page_title_prompt_custom');
delete_option('aicont_plugin_seo_title_product_prompt_custom');
delete_site_option('aicont_plugin_seo_title_product_prompt_custom');
delete_option('aicont_plugin_seo_product_title_prompt_custom');
delete_site_option('aicont_plugin_seo_product_title_prompt_custom');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aicont_singlepost_content_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aicont_singlepost_content_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aicont_singlepost_content_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aicont_singlepost_content_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aicont_singlepost_editContent_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aicont_singlepost_editContent_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aicont_singlepost_editContent_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aicont_singlepost_editContent_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aicont_singlepost_faq_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aicont_singlepost_faq_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aicont_singlepost_faq_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aicont_singlepost_faq_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_description_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aicont_singlepost_seo_description_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_description_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_description_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_title_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aicont_singlepost_seo_title_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_title_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aicont_singlepost_seo_title_prompt_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aicont_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aicont_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aicont_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aicont_keyword' ) );

