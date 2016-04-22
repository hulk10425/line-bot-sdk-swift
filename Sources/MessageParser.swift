import JSON

public struct MessageParser {
    public static func parse(json: JSON) throws -> MessageType? {
        let contentType = json.get(path: "content.contentType")
            .flatMap { return $0.int }
            .flatMap { ContentType(rawValue: $0) }
        if let contentType = contentType {
            switch contentType {
            case .Text:
                return TextMessage(json: json)
            case .Image:
                return ImageMessage(json: json)
            case .Video:
                return VideoMessage(json: json)
            case .Audio:
                return AudioMessage(json: json)
            case .Location:
                return LocationMessage(json: json)
            case .Sticker:
                return StickerMessage(json: json)
            case .Contact:
                return ContactMessage(json: json)
            }
        } else {
            return nil
        }
    }
}

