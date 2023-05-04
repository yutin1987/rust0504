#[cfg(test)]
mod tests {
    struct User {
        active: bool,
        username: String,
        email: String,
        sign_in_count: u64,
    }

    #[test]
    fn test() {
        let user1 = User {
            active: true,
            email: String::from("someone@example.com"),
            username: String::from("someusername123"),
            sign_in_count: 1,
        };

        let user2 = User {
          email: String::from("anotheremail@example.com"),
          ..user1 // use the rest of the fields from user1
        };

        assert_eq!(user1.username, user2.username);
    }
}