enum AppSvgImages {
  appLogo,
  appleIcon,
  facebookIcon,
  googleIcon,
  userIcon,
}

enum AppPngImages {
  profilePlaceholder,
  banner,
}

String getSvgImagePath(AppSvgImages svgImage) {
  switch (svgImage) {
    case AppSvgImages.appLogo:
      return 'assets/svg/spotify_icon.svg';
    case AppSvgImages.appleIcon:
      return 'assets/svg/apple_icon.svg';
    case AppSvgImages.facebookIcon:
      return 'assets/svg/facebook_icon.svg';
    case AppSvgImages.googleIcon:
      return 'assets/svg/google_icon.svg';
      case AppSvgImages.userIcon:
    return 'assets/svg/user_icon.svg';
    default:
      return '';
  }
}

String getPngImagePath(AppPngImages pngImage) {
  switch (pngImage) {
    case AppPngImages.profilePlaceholder:
      return '';
    case AppPngImages.banner:
      return '';
    default:
      return '';
  }
}
