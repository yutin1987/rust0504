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

        user1.email = String::from("anotheremail@example.com");

        assert_eq!(user1.email, String::from("anotheremail@example.com"));
    }
}