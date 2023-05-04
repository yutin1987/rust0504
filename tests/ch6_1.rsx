#[cfg(test)]
mod tests {
    enum IpAddrKind {
        V4,
        V6,
    }

    enum IpAddr {
        V4(String),
        V6(String),
   }

    #[test]
    fn test() {
        let home = IpAddr::V4(String::from("127.0.0.1"));
        let loopback = IpAddr::V6(String::from("::1"));
    }
}