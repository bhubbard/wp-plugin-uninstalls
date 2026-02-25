#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socranext_connect_state'
wp option delete 'socranext_connect_state_timestamp'
wp option delete 'socranext_access_token'
wp option delete 'socranext_api_secret'
wp option delete 'socranext_kennisbank_id'
wp option delete 'socranext_blog_custom_html'
wp option delete 'socranext_blog_custom_css'
wp option delete 'socranext_blog_custom_js'
wp option delete 'socranext_blog_custom_css_timestamp'
wp option delete 'socranext_blog_custom_js_timestamp'
wp option delete 'socranext_kb_custom_html'
wp option delete 'socranext_kb_custom_css'
wp option delete 'socranext_kb_custom_js'
wp option delete 'socranext_kb_title_text'
wp option delete 'socranext_articles_custom_html'
wp option delete 'socranext_articles_custom_css'
wp option delete 'socranext_articles_custom_js'
wp option delete 'socranext_articles_title_text'
wp option delete 'socranext_articles_button_text'
wp option delete 'socranext_articles_custom_css_timestamp'
wp option delete 'socranext_articles_custom_js_timestamp'
wp option delete 'socranext_faq_custom_html'
wp option delete 'socranext_faq_custom_css'
wp option delete 'socranext_faq_custom_js'
wp option delete 'socranext_faq_title_text'
wp option delete 'socranext_faq_disclaimer_text'

# Delete Transients
wp transient delete 'socranext_blog_custom_html'
wp transient delete 'socranext_blog_custom_css'
wp transient delete 'socranext_blog_custom_js'
wp transient delete 'socranext_articles_custom_html'
wp transient delete 'socranext_articles_custom_css'
wp transient delete 'socranext_articles_custom_js'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_qas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_qas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_qas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_qas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_custom_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_custom_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_custom_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_custom_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_custom_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_custom_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_custom_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_custom_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_kennisbank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_kennisbank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_kennisbank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_kennisbank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_parent_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_parent_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_parent_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_parent_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_jsonld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_jsonld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_jsonld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_jsonld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_rdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_rdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_rdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_rdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_disclaimer_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_disclaimer_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_disclaimer_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_disclaimer_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_auto_generate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_auto_generate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_auto_generate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_auto_generate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socranext_auto_generate_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socranext_auto_generate_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socranext_auto_generate_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socranext_auto_generate_timestamp'"
