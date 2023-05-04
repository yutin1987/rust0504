#[cfg(test)]
mod tests {
    struct User {
        active: bool,
        username: &str,
        email: &str,
        sign_in_count: u64,
    }

    #[test]
    fn test() {
        let user1 = User {
            active: true,
            email: "someone@example.com",
            username: "someusername123",
            sign_in_count: 1,
        };

        let user2 = User {
          email: "anotheremail@example.com",
          ..user1 // use the rest of the fields from user1
        };
    }
}