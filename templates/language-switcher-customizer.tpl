<?php
$languages = wpm_get_languages();
$locales = array_flip($languages);
$lang = wpm_get_edit_lang();
if ( count( $languages ) <= 1 ) {
  return;
}
$options = wpm_get_options();
?>
<div id="wpm-language-switcher" class="wpm-language-switcher">
  <div class="lang-main">
    <img src="<?php echo WPM()->flag_dir() . $options[ $locales[ $lang ] ]['flag'] . '.png'; ?>">
  </div>
  <div class="lang-dropdown">
    <ul>
      <?php foreach ( $languages as $key => $language ) { if ( $language == $lang ) continue; ?>
        <li class="wpm-language-<?php echo $language; ?>">
          <a href="<?php echo add_query_arg( 'edit_lang', $language, home_url( $_SERVER['REQUEST_URI'] ) ); ?>">
            <img src="<?php echo WPM()->flag_dir() . $options[ $key ]['flag'] . '.png'; ?>" alt="<?php echo $options[ $key ]['name']; ?>">
          </a>
        </li>
      <?php } ?>
    </ul>
  </div>
</div>