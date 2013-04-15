class SidePhoto < Photo
  has_attached_file :image, styles: {thumbnail: "128x128", detail: "512x512", original: "100%"}
end
