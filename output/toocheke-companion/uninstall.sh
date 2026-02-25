#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webcomic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-button'"
wp option delete 'toocheke-always-show-nav-buttons'
wp option delete 'toocheke-chapter-first-comic'
wp option delete 'toocheke-comics-order'
wp option delete 'toocheke-series-order'
wp option delete 'toocheke-chapter-dropdown'
wp option delete 'toocheke-chapter-navigation-buttons'
wp option delete 'toocheke-comics-navigation'
wp option delete 'toocheke-previous-chapter-button'
wp option delete 'toocheke-next-chapter-button'
wp option delete 'toocheke-comics-archive'
wp option delete 'toocheke-comic-likes'
wp option delete 'toocheke-comic-no-of-views'
wp option delete 'toocheke-random-navigation'
wp option delete 'toocheke-comic-no-of-comments'
wp option delete 'toocheke-random-button'
wp option delete 'toocheke-comic-nav-above-comic'
wp option delete 'toocheke-comic-layout-devices'
wp option delete 'toocheke-manga-default-pages'
wp option delete 'toocheke-manga-rtl'
wp option delete 'toocheke-comic-discussion'
wp option delete 'toocheke-global-buy-comic'
wp option delete 'patreon-creator-tiers'
wp option delete 'toocheke-facebook-button'
wp option delete 'toocheke-twitter-button'
wp option delete 'toocheke-tumblr-button'
wp option delete 'toocheke-reddit-button'
wp option delete 'toocheke-copy-button'
wp option delete 'toocheke-threads-button'
wp option delete 'toocheke-bluesky-button'
wp option delete 'toocheke-whatsapp-button'
wp option delete 'toocheke-linkedin-button'
wp option delete 'toocheke-social-share-facebook'
wp option delete 'toocheke-social-share-twitter'
wp option delete 'toocheke-social-share-tumblr'
wp option delete 'toocheke-social-share-reddit'
wp option delete 'toocheke-social-share-threads'
wp option delete 'toocheke-social-share-bluesky'
wp option delete 'toocheke-social-share-whatsapp'
wp option delete 'toocheke-social-share-linkedin'
wp option delete 'toocheke-social-share-copy'
wp option delete 'toocheke-buymeacoffee-button'
wp option delete 'toocheke-gumroad-button'
wp option delete 'toocheke-indiegogo-button'
wp option delete 'toocheke-kickstarter-button'
wp option delete 'toocheke-kofi-button'
wp option delete 'toocheke-liberapay-button'
wp option delete 'toocheke-patreon-button'
wp option delete 'toocheke-paypal-button'
wp option delete 'toocheke-substack-button'
wp option delete 'toocheke-tipeee-button'
wp option delete 'toocheke-support-link-buymeacoffee'
wp option delete 'toocheke-support-link-gumroad'
wp option delete 'toocheke-support-link-indiegogo'
wp option delete 'toocheke-support-link-kickstarter'
wp option delete 'toocheke-support-link-kofi'
wp option delete 'toocheke-support-link-liberapay'
wp option delete 'toocheke-support-link-patreon'
wp option delete 'toocheke-support-link-paypal'
wp option delete 'toocheke-support-link-substack'
wp option delete 'toocheke-support-link-tipeee'
wp option delete 'toocheke-comics-slider-order'
wp option delete 'toocheke-collection-first-comic'
wp option delete 'toocheke-top-10-comics-layout'
wp option delete 'toocheke-comic-panel-swipe-navigation'
wp option delete 'toocheke-first-button'
wp option delete 'toocheke-previous-button'
wp option delete 'toocheke-next-button'
wp option delete 'toocheke-latest-button'
wp option delete 'toocheke-infinite-scroll'
wp option delete 'toocheke-comic-archive-navigation'
wp option delete 'toocheke-comic-bookmark'
wp option delete 'toocheke-click-comic-next'
wp option delete 'toocheke-keyboard'
wp option delete 'toocheke-scroll-past-header'
wp option delete 'toocheke-early-access'
wp option delete 'toocheke-comic-archive-button'
wp option delete 'toocheke-display-multiple-series'
wp option delete 'toocheke-display-latest-comics-of-all-multiple-series'
wp option delete 'toocheke-series-landing-blog'
wp option delete 'toocheke-traditional-home-series'
wp option delete 'toocheke-paywalled-discussion'
wp option delete 'toocheke-hide-blog'
wp option delete 'toocheke-dspay-blog-on-webtoon'
wp option delete 'toocheke-age-verification'
wp option delete 'toocheke-bilingual-display'
wp option delete 'toocheke-image-click'
wp option delete 'toocheke-image-protection'
wp option delete 'toocheke-comics-to-main-rss'
wp option delete 'toocheke-paypal-client-id'
wp option delete 'toocheke-paypal-client-secret'
wp option delete 'toocheke-enable-paypal-sandbox'
wp option delete 'toocheke_paypal_currency'
wp option delete 'toocheke-comic-sponsorship-price'
wp option delete 'toocheke-original-art'
wp option delete 'toocheke-print'
wp option delete 'toocheke-paypal-email'
wp option delete 'toocheke-comic-title'
wp option delete 'toocheke-original-description'
wp option delete 'toocheke-original-us-price'
wp option delete 'toocheke-original-us-shipping'
wp option delete 'toocheke-original-canada-price'
wp option delete 'toocheke-original-canada-shipping'
wp option delete 'toocheke-original-international-price'
wp option delete 'toocheke-original-international-shipping'
wp option delete 'toocheke-print-description'
wp option delete 'toocheke-print-us-price'
wp option delete 'toocheke-print-us-shipping'
wp option delete 'toocheke-print-canada-price'
wp option delete 'toocheke-print-canada-shipping'
wp option delete 'toocheke-print-international-price'
wp option delete 'toocheke-print-international-shipping'
wp option delete 'toocheke_companion_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comic_blog_post_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comic_blog_post_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comic_blog_post_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comic_blog_post_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webcomic_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webcomic_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webcomic_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webcomic_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chapter-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chapter-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chapter-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chapter-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'character-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'character-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'character-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'character-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comic-title-2nd-language-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comic-title-2nd-language-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comic-title-2nd-language-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comic-title-2nd-language-display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comic_2nd_language_blog_post_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comic_2nd_language_blog_post_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comic_2nd_language_blog_post_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comic_2nd_language_blog_post_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'incr_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'incr_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'incr_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'incr_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manga_creator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manga_creator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manga_creator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manga_creator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manga_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manga_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manga_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manga_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manga_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manga_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manga_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manga_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_digital_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_digital_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_digital_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_digital_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_print_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_print_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_print_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_print_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'volume_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'volume_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'volume_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'volume_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desktop_comic_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desktop_comic_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desktop_comic_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desktop_comic_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'volume_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'volume_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'volume_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'volume_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manga_chapter_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manga_chapter_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manga_chapter_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manga_chapter_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_hero_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_hero_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_hero_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_hero_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_mobile_hero_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_mobile_hero_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_mobile_hero_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_mobile_hero_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_bg_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_bg_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_bg_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_bg_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'genre-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'genre-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'genre-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'genre-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chapter-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chapter-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chapter-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chapter-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desktop_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desktop_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desktop_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desktop_comic_2nd_language_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comic-hovertext'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comic-hovertext'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comic-hovertext'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comic-hovertext'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transcript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transcript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transcript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transcript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'age-verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'age-verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'age-verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'age-verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comic_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comic_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comic_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comic_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_sidebar_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_sidebar_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_sidebar_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_sidebar_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'character-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'character-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'character-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'character-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manga_release_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manga_release_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manga_release_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manga_release_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chapter_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chapter_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chapter_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chapter_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_comment_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_comment_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_comment_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_comment_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_comment_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_comment_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_comment_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_comment_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_like_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_like_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_like_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_like_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_modified'"
